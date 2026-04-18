.class public Lcom/geetest/sdk/GT3ConfigBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/geetest/sdk/NoProguard;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/geetest/sdk/GT3Listener;

.field private e:Z

.field private f:Lorg/json/JSONObject;

.field private g:I

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/geetest/sdk/GT3LoadImageView;

.field private j:Lcom/geetest/sdk/utils/GT3ServiceNode;

.field private k:[Ljava/lang/String;

.field private l:Lcom/geetest/sdk/utils/GT3Protocol;

.field private m:Z

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    .line 4
    iput v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->a:I

    .line 6
    iput v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->b:I

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->g:I

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->q:Z

    return-void
.end method


# virtual methods
.method public getApi1Json()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getCorners()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->o:I

    return v0
.end method

.method public getDialogOffsetY()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->p:I

    return v0
.end method

.method public getGTViewWithParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->n:Ljava/util/Map;

    return-object v0
.end method

.method public getGetRequestProtocol()Lcom/geetest/sdk/utils/GT3Protocol;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->l:Lcom/geetest/sdk/utils/GT3Protocol;

    return-object v0
.end method

.method public getGt3ServiceNode()Lcom/geetest/sdk/utils/GT3ServiceNode;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->j:Lcom/geetest/sdk/utils/GT3ServiceNode;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/geetest/sdk/GT3Listener;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->d:Lcom/geetest/sdk/GT3Listener;

    return-object v0
.end method

.method public getLoadImageView()Lcom/geetest/sdk/GT3LoadImageView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->i:Lcom/geetest/sdk/GT3LoadImageView;

    return-object v0
.end method

.method public getPattern()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->g:I

    return v0
.end method

.method public getTimeout()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->a:I

    return v0
.end method

.method public getUseCustomAPIServers()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->h:Ljava/util/Map;

    return-object v0
.end method

.method public getWebviewTimeout()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->b:I

    return v0
.end method

.method public isCanceledOnTouchOutside()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->e:Z

    return v0
.end method

.method public isReleaseLog()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->q:Z

    return v0
.end method

.method public isUnCanceledOnTouchKeyCodeBack()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->m:Z

    return v0
.end method

.method public setApi1Json(Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->f:Lorg/json/JSONObject;

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->e:Z

    return-void
.end method

.method public setCorners(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->o:I

    return-void
.end method

.method public setDialogOffsetY(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->p:I

    return-void
.end method

.method public setGTViewWithParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->n:Ljava/util/Map;

    return-void
.end method

.method public setGetRequestProtocol(Lcom/geetest/sdk/utils/GT3Protocol;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->l:Lcom/geetest/sdk/utils/GT3Protocol;

    return-void
.end method

.method public setGt3ServiceNode(Lcom/geetest/sdk/utils/GT3ServiceNode;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->j:Lcom/geetest/sdk/utils/GT3ServiceNode;

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->c:Ljava/lang/String;

    return-void
.end method

.method public setListener(Lcom/geetest/sdk/GT3Listener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->d:Lcom/geetest/sdk/GT3Listener;

    return-void
.end method

.method public setLoadImageView(Lcom/geetest/sdk/GT3LoadImageView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->i:Lcom/geetest/sdk/GT3LoadImageView;

    return-void
.end method

.method public setPattern(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->g:I

    return-void
.end method

.method public setReleaseLog(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->q:Z

    return-void
.end method

.method public setTimeout(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->a:I

    return-void
.end method

.method public setUnCanceledOnTouchKeyCodeBack(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->m:Z

    return-void
.end method

.method public setUseCustomAPIServers([Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->k:[Ljava/lang/String;

    return-void
.end method

.method public setUserInfo(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->h:Ljava/util/Map;

    return-void
.end method

.method public setWebviewTimeout(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->b:I

    return-void
.end method
