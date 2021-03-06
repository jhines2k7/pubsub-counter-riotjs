<increment>
    <button onclick={ increment }>Increment</button>

    <script>
        import { log } from "../../js/util";

        let eventStore = opts.event_store;

        this.increment = function(ev) {
            let counterIncrementEvent = {
                channel: "sync",
                topic: "counter.increment",
                eventType: 'click',
                data: {
                    count: 1
                }
            };

            eventStore.add(counterIncrementEvent);
        }.bind(this)
    </script>
</increment>