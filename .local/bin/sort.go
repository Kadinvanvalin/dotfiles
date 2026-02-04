package main
// go run sort.go
import (
	"bytes"
	"fmt"
	"log"
	"os/exec"
	"strings"
)

func run(cmd string, args ...string) string {
	c := exec.Command(cmd, args...)
	var out bytes.Buffer
	c.Stdout = &out
	c.Stderr = &out
	if err := c.Run(); err != nil {
		log.Fatalf("command failed: %s %v\n%s", cmd, args, out.String())
	}
	return out.String()
}

func getWindowIDs() []string {
	out := run("aerospace", "list-windows", "--all")
	lines := strings.Split(out, "\n")

	var ids []string
	for _, line := range lines {
		parts := strings.Split(line, "|")
		if len(parts) > 0 {
			id := strings.TrimSpace(parts[0])
			if id != "" {
				ids = append(ids, id)
			}
		}
	}
	return ids
}

func findWindowIDByName(substr string) string {
	out := run("aerospace", "list-windows", "--all")
	lines := strings.Split(out, "\n")

	for _, line := range lines {
		if strings.Contains(line, substr) {
			parts := strings.Split(line, "|")
			if len(parts) > 0 {
				return strings.TrimSpace(parts[0])
			}
		}
	}
	return ""
}

func move(workspace, id string) {
	if id == "" {
		return
	}
	run("aerospace", "move-node-to-workspace", workspace, "--window-id", id)
}

func main() {
	slackID := findWindowIDByName("Slack")
	outlookID := findWindowIDByName("Microsoft Outlook")
	terminalID := findWindowIDByName("Alacritty")
	codeID := findWindowIDByName("IntelliJ IDEA")
	teamsID := findWindowIDByName("Microsoft Teams")
	browserID := findWindowIDByName("Arc")

	move("1", terminalID)
	move("2", browserID)
	move("3", codeID)
	move("5", teamsID)
	move("7", outlookID)
	move("8", slackID)

	exclude := map[string]bool{
		slackID:    true,
		outlookID:  true,
		terminalID: true,
		codeID:     true,
		teamsID:    true,
		browserID:  true,
	}

	allIDs := getWindowIDs()
	for _, id := range allIDs {
		if !exclude[id] {
			run("aerospace", "move-node-to-workspace", "P", "--window-id", id)
		}
	}

	run("sketchybar", "--trigger", "aerospace_workspace_change")
	run("aerospace", "workspace", "P")

	fmt.Println("Done.")
}