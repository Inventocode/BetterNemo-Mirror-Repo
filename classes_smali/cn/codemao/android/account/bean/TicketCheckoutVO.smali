.class public Lcn/codemao/android/account/bean/TicketCheckoutVO;
.super Ljava/lang/Object;
.source "TicketCheckoutVO.java"


# instance fields
.field private captcha:Ljava/lang/String;

.field private phone_number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptcha()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcn/codemao/android/account/bean/TicketCheckoutVO;->captcha:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone_number()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcn/codemao/android/account/bean/TicketCheckoutVO;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public setCaptcha(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcn/codemao/android/account/bean/TicketCheckoutVO;->captcha:Ljava/lang/String;

    return-void
.end method

.method public setPhone_number(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcn/codemao/android/account/bean/TicketCheckoutVO;->phone_number:Ljava/lang/String;

    return-void
.end method
