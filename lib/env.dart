// ignore_for_file: do_not_use_environment

const flavor = String.fromEnvironment('flavor');

const slackOathUrl = flavor == 'prod'
    ? 'https://slack.com/oauth/v2/authorize?client_id=5751023859350.5950608294196&scope=channels:history,channels:join,channels:read,chat:write,chat:write.public,groups:history,groups:read,groups:write.invites,im:history,im:write,mpim:history,mpim:write,reactions:write,team:read,users:read&user_scope='
    : 'https://slack.com/oauth/v2/authorize?client_id=5751023859350.5760359196628&scope=channels:history,channels:join,channels:read,chat:write,chat:write.public,groups:history,groups:read,groups:write.invites,im:history,im:write,mpim:history,mpim:write,reactions:write,team:read,users:read&user_scope=';

// TODO: 利用規約ページ設定
const termsOfServiceUrl = 'https://www.google.com/';

// TODO: プライバシーポリシーページ設定
const privacyPolicyUrl = 'https://www.google.com/';

const accountDeletionFormUrl = 'https://forms.gle/65SnZ7bRrBUisdNTA';
