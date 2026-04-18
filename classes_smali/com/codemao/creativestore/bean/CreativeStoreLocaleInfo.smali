.class public Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;
.super Ljava/lang/Object;
.source "CreativeStoreLocaleInfo.java"


# instance fields
.field private defaultBgName:Ljava/lang/String;

.field private defaultWorkName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;->defaultBgName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;->defaultWorkName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkValue()V
    .registers 3

    .line 19
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;->defaultBgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 20
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_default_bg_name:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;->defaultBgName:Ljava/lang/String;

    .line 22
    :cond_18
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;->defaultWorkName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 23
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_default_work_name:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;->defaultWorkName:Ljava/lang/String;

    :cond_30
    return-void
.end method

.method public getDefaultBgName()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;->defaultBgName:Ljava/lang/String;

    return-object v0
.end method

.method public getGetDefaultWorkName()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;->defaultWorkName:Ljava/lang/String;

    return-object v0
.end method
