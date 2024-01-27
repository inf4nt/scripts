# use local Docker images with minikube
# write-host "Setting local docker images to minikube"
# minikube docker-env | Invoke-Expression

function new-alias-safe($name, $value) {
        $scope = "global"

        if (!(test-path alias:$name)) {
                new-alias -name $name -value $value -Scope $scope
                write-host "Alias $name to $value and scope $scope has been added."
        } else {
                write-host "Alias $name already exists."
        }
}

function remove-alias-safe($name) {
        if (test-path alias:$name) {
                while(test-path alias:$name) {
                        remove-item alias:$name
                }
                write-host "Alias $name has been removed."
        } else {
        write-host "No $name alias found."
    }
}

new-alias-safe -name open -value start-process

new-alias-safe -name touch -value new-item

new-alias-safe -name vi -value vim

remove-alias-safe -name curl