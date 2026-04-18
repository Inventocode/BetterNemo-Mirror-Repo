.class public Lcn/codemao/android/account/bean/PasswordCaptchaVO;
.super Ljava/lang/Object;
.source "PasswordCaptchaVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private phone_number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhone_number()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcn/codemao/android/account/bean/PasswordCaptchaVO;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public setPhone_number(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcn/codemao/android/account/bean/PasswordCaptchaVO;->phone_number:Ljava/lang/String;

    return-void
.end method
