.class public Lcom/chuanglan/shanyan_sdk/b/j;
.super Lcom/chuanglan/shanyan_sdk/b/f;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "com.heytap.openid"

    const-string v1, "com.heytap.openid.IdentifyService"

    const-string v2, "action.com.heytap.openid.OPEN_ID_SERVICE"

    const-string v3, "com.heytap.openid.IOpenID"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b_(Landroid/content/Context;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/chuanglan/shanyan_sdk/b/f;->b_(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public c_(Landroid/content/Context;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/chuanglan/shanyan_sdk/b/f;->c_(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
