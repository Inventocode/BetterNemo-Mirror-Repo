.class public Lcn/codemao/android/share/CodeMaoShare;
.super Ljava/lang/Object;
.source "CodeMaoShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/share/CodeMaoShare$Builder;
    }
.end annotation


# static fields
.field private static sIshares:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/share/interfaces/Ishare;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcn/codemao/android/share/CodeMaoShare$Builder;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcn/codemao/android/share/CodeMaoShare$Builder;->access$000(Lcn/codemao/android/share/CodeMaoShare$Builder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/codemao/android/share/bean/ShareConfig;->QQId:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcn/codemao/android/share/CodeMaoShare$Builder;->access$100(Lcn/codemao/android/share/CodeMaoShare$Builder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/codemao/android/share/bean/ShareConfig;->wechatId:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcn/codemao/android/share/CodeMaoShare$Builder;->access$200(Lcn/codemao/android/share/CodeMaoShare$Builder;)I

    move-result p1

    sput p1, Lcn/codemao/android/share/bean/ShareConfig;->defDrawableId:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/codemao/android/share/CodeMaoShare$Builder;Lcn/codemao/android/share/CodeMaoShare$1;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1}, Lcn/codemao/android/share/CodeMaoShare;-><init>(Lcn/codemao/android/share/CodeMaoShare$Builder;)V

    return-void
.end method

.method public static destory()V
    .registers 2

    .line 55
    sget-object v0, Lcn/codemao/android/share/CodeMaoShare;->sIshares:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 58
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/share/interfaces/Ishare;

    if-eqz v1, :cond_9

    .line 60
    invoke-interface {v1}, Lcn/codemao/android/share/interfaces/Ishare;->onDestroy()V

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public static newBuilder()Lcn/codemao/android/share/CodeMaoShare$Builder;
    .registers 1

    .line 77
    new-instance v0, Lcn/codemao/android/share/CodeMaoShare$Builder;

    invoke-direct {v0}, Lcn/codemao/android/share/CodeMaoShare$Builder;-><init>()V

    return-object v0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 66
    sget-object v0, Lcn/codemao/android/share/CodeMaoShare;->sIshares:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 69
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/share/interfaces/Ishare;

    if-eqz v1, :cond_9

    .line 71
    invoke-interface {v1, p0, p1, p2}, Lcn/codemao/android/share/interfaces/Ishare;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public static share(Landroid/app/Activity;Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V
    .registers 5

    .line 32
    sget-object v0, Lcn/codemao/android/share/CodeMaoShare;->sIshares:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 33
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcn/codemao/android/share/CodeMaoShare;->sIshares:Ljava/util/List;

    .line 36
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/codemao/android/share/CodeMaoShare;->sIshares:Ljava/util/List;

    .line 37
    sget-object v0, Lcn/codemao/android/share/CodeMaoShare$1;->$SwitchMap$cn$codemao$android$share$bean$ShareMedia:[I

    invoke-interface {p1}, Lcn/codemao/android/share/interfaces/IshareInfo;->getShareMedia()Lcn/codemao/android/share/bean/ShareMedia;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2a

    goto :goto_4c

    .line 46
    :cond_2a
    new-instance v0, Lcn/codemao/android/share/WechatShare;

    invoke-direct {v0, p0}, Lcn/codemao/android/share/WechatShare;-><init>(Landroid/app/Activity;)V

    .line 47
    invoke-interface {v0, p1, p2}, Lcn/codemao/android/share/interfaces/Ishare;->onShare(Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V

    .line 48
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/codemao/android/account/util/WechatManager;->setIshareResult(Lcn/codemao/android/share/interfaces/IshareResult;)V

    .line 49
    sget-object p0, Lcn/codemao/android/share/CodeMaoShare;->sIshares:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 40
    :cond_3f
    new-instance v0, Lcn/codemao/android/share/QQshare;

    invoke-direct {v0, p0}, Lcn/codemao/android/share/QQshare;-><init>(Landroid/app/Activity;)V

    .line 41
    invoke-interface {v0, p1, p2}, Lcn/codemao/android/share/interfaces/Ishare;->onShare(Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V

    .line 42
    sget-object p0, Lcn/codemao/android/share/CodeMaoShare;->sIshares:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4c
    return-void
.end method
