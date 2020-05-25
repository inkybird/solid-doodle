{% extends "base.tpl" %}
{% block content %}
    <div id="jump-to">
        <h2>Jump to...</h2>
        {%- for storyline in storylines %}
            <a class="chapter-links" href="infinite_scroll.html#{{ storyline.pages[0].page_name }}">{{ storyline.name }}</a>
        {%- endfor %}
    </div>
    <div id="load-older" hidden>
        <button id="load-older-button">Load Older</button>
    </div>
    <div id="loading-infinite-scroll"><p>Loading comics...</p></div>
    <div id="infinite-scroll"></div>
    <div id="load-newer">
        <button id="load-newer-button">Load Newer</button>
    </div>
    <div id="caught-up-notification" hidden>
        <h2>You're all caught up!</h2>
    </div>
{% endblock %}
{% block script %}
<script type="module">
    import { load_page } from "./src/js/infinite_scroll.js";
    load_page();
</script>
{% endblock %}