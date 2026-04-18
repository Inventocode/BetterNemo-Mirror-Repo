.class public Lcn/codemao/android/account/bean/CaptchaCodeVO;
.super Ljava/lang/Object;
.source "CaptchaCodeVO.java"


# instance fields
.field private agreementIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "agreement_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phone_number:Ljava/lang/String;

.field private pid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/account/bean/CaptchaCodeVO;->pid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAgreementIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcn/codemao/android/account/bean/CaptchaCodeVO;->agreementIds:Ljava/util/List;

    return-object v0
.end method

.method public getPhone_number()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcn/codemao/android/account/bean/CaptchaCodeVO;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public setAgreementIds(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcn/codemao/android/account/bean/CaptchaCodeVO;->agreementIds:Ljava/util/List;

    return-void
.end method

.method public setPhone_number(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcn/codemao/android/account/bean/CaptchaCodeVO;->phone_number:Ljava/lang/String;

    return-void
.end method
