.class public Lcom/codemao/nemo/util/WebUtil;
.super Ljava/lang/Object;
.source "WebUtil.java"


# direct methods
.method public static goCollectChecklist(Landroid/content/Context;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "https://static-platform.codemao.cn/926/protocols/T5qx9_w0_informationCollectionList.html"

    .line 117
    invoke-static {p0, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goWeb(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static goKidsInfoProtection(Landroid/content/Context;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "https://platform.codemao.cn/513/1757917685092.html"

    .line 107
    invoke-static {p0, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goWeb(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static goPolicySummary(Landroid/content/Context;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "https://static-platform.codemao.cn/926/protocols/T5qx9_w0_informationProtectionPolicySummary.html"

    .line 112
    invoke-static {p0, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goWeb(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static goPrivateProvision(Landroid/content/Context;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "https://platform.codemao.cn/513/1754642386023.html"

    .line 102
    invoke-static {p0, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goWeb(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static goSharedList(Landroid/content/Context;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "https://static-platform.codemao.cn/926/protocols/T5qx9_w0_informationSharingList.html"

    .line 122
    invoke-static {p0, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goWeb(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static goUserAgreement(Landroid/content/Context;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "https://platform.codemao.cn/513/1626246967935nemo_user_service_protocol.html"

    .line 98
    invoke-static {p0, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goWeb(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static openBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 127
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_24

    const-string p1, "请选择浏览器"

    .line 131
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_24

    :catch_24
    :cond_24
    return-void
.end method
