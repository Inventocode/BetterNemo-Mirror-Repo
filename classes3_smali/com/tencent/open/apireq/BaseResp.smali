.class public Lcom/tencent/open/apireq/BaseResp;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final CODE_ERROR_PARAMS:I = -0x7d0

.field public static final CODE_NOT_LOGIN:I = -0x7d1

.field public static final CODE_PERMISSION_NOT_GRANTED:I = -0x3eb

.field public static final CODE_QQ_LOW_VERSION:I = -0x3e9

.field public static final CODE_QQ_NOT_INSTALLED:I = -0x3e8

.field public static final CODE_SUCCESS:I = 0x0

.field public static final CODE_UNSUPPORTED_BRANCH:I = -0x3ea


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/tencent/open/apireq/BaseResp;->a:I

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/tencent/open/apireq/BaseResp;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/String;
    .registers 2

    const-string p1, "Api call failed."

    return-object p1
.end method

.method public getCode()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/tencent/open/apireq/BaseResp;->a:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/tencent/open/apireq/BaseResp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 29
    iget v0, p0, Lcom/tencent/open/apireq/BaseResp;->a:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setCode(I)V
    .registers 3

    .line 37
    iput p1, p0, Lcom/tencent/open/apireq/BaseResp;->a:I

    const/16 v0, -0x7d1

    if-eq p1, v0, :cond_23

    const/16 v0, -0x7d0

    if-eq p1, v0, :cond_20

    if-eqz p1, :cond_1d

    packed-switch p1, :pswitch_data_2a

    .line 59
    invoke-virtual {p0, p1}, Lcom/tencent/open/apireq/BaseResp;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :pswitch_14  #0xfffffc18
    const-string p1, "QQ is not installed."

    goto :goto_25

    :pswitch_17  #0xfffffc17
    const-string p1, "QQ version is too low."

    goto :goto_25

    :pswitch_1a  #0xfffffc16
    const-string p1, "The QQ branch (e.g. TIM) is not supported"

    goto :goto_25

    :cond_1d
    const-string p1, ""

    goto :goto_25

    :cond_20
    const-string p1, "The given params check failed."

    goto :goto_25

    :cond_23
    const-string p1, "Not login."

    .line 61
    :goto_25
    invoke-virtual {p0, p1}, Lcom/tencent/open/apireq/BaseResp;->setErrorMsg(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_2a
    .packed-switch -0x3ea
        :pswitch_1a  #fffffc16
        :pswitch_17  #fffffc17
        :pswitch_14  #fffffc18
    .end packed-switch
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/tencent/open/apireq/BaseResp;->b:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseResp{mCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/open/apireq/BaseResp;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mErrorMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/open/apireq/BaseResp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
