.class public Lcn/codemao/android/account/bean/CodeException;
.super Ljava/lang/Exception;
.source "CodeException.java"


# instance fields
.field private code:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 12
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcn/codemao/android/account/bean/CodeException;->code:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcn/codemao/android/account/bean/CodeException;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcn/codemao/android/account/bean/CodeException;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcn/codemao/android/account/bean/CodeException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcn/codemao/android/account/bean/CodeException;->code:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcn/codemao/android/account/bean/CodeException;->message:Ljava/lang/String;

    return-void
.end method
