.class public Lcn/codemao/android/account/bean/VoiceCaptchaRequest;
.super Ljava/lang/Object;
.source "VoiceCaptchaRequest.java"


# instance fields
.field private oauthTicket:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oauth_ticket"
    .end annotation
.end field

.field private phoneNum:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_number"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOauthTicket()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcn/codemao/android/account/bean/VoiceCaptchaRequest;->oauthTicket:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcn/codemao/android/account/bean/VoiceCaptchaRequest;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcn/codemao/android/account/bean/VoiceCaptchaRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setOauthTicket(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcn/codemao/android/account/bean/VoiceCaptchaRequest;->oauthTicket:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcn/codemao/android/account/bean/VoiceCaptchaRequest;->phoneNum:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcn/codemao/android/account/bean/VoiceCaptchaRequest;->type:Ljava/lang/String;

    return-void
.end method
