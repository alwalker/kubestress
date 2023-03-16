CPUS=$(cat /etc/kubescale/stress.conf)

echo "Stressing $CPUS..."

stress -c $CPUS -t 360

echo "Timeout reached, looping..."
while true
do
    sleep 10
done

echo "Exiting..."