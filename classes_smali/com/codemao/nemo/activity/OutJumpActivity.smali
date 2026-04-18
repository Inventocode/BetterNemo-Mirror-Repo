.class public Lcom/codemao/nemo/activity/OutJumpActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "OutJumpActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private jump(Landroid/net/Uri;)V
    .registers 3

    .line 38
    const-class v0, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/SystemUtil;->isLaunchedActivity(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo p1, "请保存作品后再尝试"

    .line 39
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3b

    .line 41
    :cond_12
    const-class v0, Lcom/codemao/nemo/MainActivityV2;

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/SystemUtil;->isLaunchedActivity(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    .line 42
    invoke-static {p1, p0, v0, v0}, Lcom/codemao/nemo/activity/LocalJumpHelper;->jump(Landroid/net/Uri;Landroid/content/Context;ZZ)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3b

    .line 45
    :cond_22
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/MainApplication;->setOutJumUri(Landroid/net/Uri;)V

    .line 46
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/codemao/nemo/activity/FirstActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3b
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "?"

    .line 19
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 22
    :try_start_d
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_28

    const/4 p1, 0x0

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_28
    if-eqz p1, :cond_2e

    .line 28
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/OutJumpActivity;->jump(Landroid/net/Uri;)V

    goto :goto_35

    .line 30
    :cond_2e
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_31} :catch_32

    goto :goto_35

    .line 33
    :catch_32
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_35
    return-void
.end method
