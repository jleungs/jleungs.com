[09:27 jleungs.com]$ cat _includes/menu_item.html
{%-for item in include.collection-%}
{%- if item.header -%}
  <p><strong>{{ item.header }}</strong><p>
{%- else -%}
  <ul>
      <li>
      {%- if item.url -%}
        <a href="{{ item.url }}">{{ item.title }}</a>
      {%- else -%}
        {{ item.title }}
      {%- endif -%}
      </li>

      {%-if item.post_list-%}
        {%
          include post_list.html
            category=item.post_list.category
            limit=item.post_list.limit
            show_more=item.post_list.show_more
            show_more_text=item.post_list.show_more_text
            show_more_url=item.post_list.show_more_url
       -%}
      {%-endif-%}

      {%-if item.entries-%}
        {%-include menu_item.html collection=item.entries-%}
      {%-endif-%}
  </ul>
{%- endif -%}
{%-endfor-%}
[09:27 jleungs.com]$ cat _data/menu.yml
# For documentation on this file, see:
# https://github.com/riggraz/no-style-please#customize-the-menu

entries:
  #- title: pages
  - header: Pages
    entries:
      - title: about
        url: about
      - title: contact
        url: contact

  #- title: all posts
  - header: All posts
    post_list:
      limit: 5
      show_more: true
      show_more_text: See archive...
      show_more_url: archive.html

  #- title: links
  - header: Links
    entries:
      - title: <a href="https://github.com/jleungs/" target="_blank">github</a> /
               <a href="https://www.linkedin.com/in/jonathan-leung/" target="_blank">linkedin</a> /
               <a href="feed.xml" target="_blank">rss</a>


