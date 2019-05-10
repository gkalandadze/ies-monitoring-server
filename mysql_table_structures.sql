CREATE TABLE `messages` (
  `id` int(11) NOT NULL COMMENT 'primary id',
  `message_id` varchar(40) DEFAULT NULL COMMENT 'შეტყობინების უნიკალური იდენტიფიკატორი',
  `sent_message_datetime` datetime DEFAULT NULL COMMENT 'შეტყობინების დრო როდესაც დაგენერირდა client-ის მხარეს',
  `message_type` varchar(20) DEFAULT NULL COMMENT 'შეტყობინების ტიპი',
  `text` text COMMENT 'შეტყობინების ტექსტი. პრობლემის აღწერა',
  `client_ip` varchar(16) DEFAULT NULL COMMENT 'Client-ის ip მისამართი საიდანაც მოვიდა შეტყობინება',
  `client_script_name` varchar(100) DEFAULT NULL COMMENT 'client-ის სკრიპტის სახელი საიდანაც მოვიდა შეტყობინება'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary id', AUTO_INCREMENT=2;
