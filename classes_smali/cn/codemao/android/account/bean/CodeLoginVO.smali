.class public Lcn/codemao/android/account/bean/CodeLoginVO;
.super Ljava/lang/Object;
.source "CodeLoginVO.java"

# interfaces
.implements Ljava/io/Serializable;


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

.field private phone_number:Ljava/lang/String;

.field private pid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
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

    .line 47
    iget-object v0, p0, Lcn/codemao/android/account/bean/CodeLoginVO;->agreementIds:Ljava/util/List;

    return-object v0
.end method

.method public getCaptcha()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcn/codemao/android/account/bean/CodeLoginVO;->captcha:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone_number()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcn/codemao/android/account/bean/CodeLoginVO;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcn/codemao/android/account/bean/CodeLoginVO;->pid:Ljava/lang/String;

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

    .line 51
    iput-object p1, p0, Lcn/codemao/android/account/bean/CodeLoginVO;->agreementIds:Ljava/util/List;

    return-void
.end method

.method public setCaptcha(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcn/codemao/android/account/bean/CodeLoginVO;->captcha:Ljava/lang/String;

    return-void
.end method

.method public setPhone_number(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcn/codemao/android/account/bean/CodeLoginVO;->phone_number:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcn/codemao/android/account/bean/CodeLoginVO;->pid:Ljava/lang/String;

    return-void
.end method
