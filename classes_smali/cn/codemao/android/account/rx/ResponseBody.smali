.class Lcn/codemao/android/account/rx/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcn/codemao/android/account/rx/ResponseBody;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcn/codemao/android/account/rx/ResponseBody;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcn/codemao/android/account/rx/ResponseBody;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcn/codemao/android/account/rx/ResponseBody;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcn/codemao/android/account/rx/ResponseBody;->code:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcn/codemao/android/account/rx/ResponseBody;->data:Ljava/lang/Object;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcn/codemao/android/account/rx/ResponseBody;->description:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcn/codemao/android/account/rx/ResponseBody;->msg:Ljava/lang/String;

    return-void
.end method
