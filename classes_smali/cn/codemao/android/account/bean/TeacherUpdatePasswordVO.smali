.class public Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;
.super Ljava/lang/Object;
.source "TeacherUpdatePasswordVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private nonce_str:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private user_id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonce_str()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;->nonce_str:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()I
    .registers 2

    .line 16
    iget v0, p0, Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;->user_id:I

    return v0
.end method

.method public setNonce_str(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;->nonce_str:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;->password:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;->sign:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(I)V
    .registers 2

    .line 20
    iput p1, p0, Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;->user_id:I

    return-void
.end method
