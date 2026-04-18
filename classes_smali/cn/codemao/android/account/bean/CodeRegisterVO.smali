.class public Lcn/codemao/android/account/bean/CodeRegisterVO;
.super Ljava/lang/Object;
.source "CodeRegisterVO.java"


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

.field private captcha:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private phone_number:Ljava/lang/String;

.field private pid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 57
    iget-object v0, p0, Lcn/codemao/android/account/bean/CodeRegisterVO;->agreementIds:Ljava/util/List;

    return-object v0
.end method

.method public getCaptcha()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcn/codemao/android/account/bean/CodeRegisterVO;->captcha:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcn/codemao/android/account/bean/CodeRegisterVO;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone_number()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcn/codemao/android/account/bean/CodeRegisterVO;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcn/codemao/android/account/bean/CodeRegisterVO;->pid:Ljava/lang/String;

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

    .line 61
    iput-object p1, p0, Lcn/codemao/android/account/bean/CodeRegisterVO;->agreementIds:Ljava/util/List;

    return-void
.end method

.method public setCaptcha(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcn/codemao/android/account/bean/CodeRegisterVO;->captcha:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcn/codemao/android/account/bean/CodeRegisterVO;->password:Ljava/lang/String;

    return-void
.end method

.method public setPhone_number(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcn/codemao/android/account/bean/CodeRegisterVO;->phone_number:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcn/codemao/android/account/bean/CodeRegisterVO;->pid:Ljava/lang/String;

    return-void
.end method
