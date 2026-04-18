.class public Lcom/codemao/nemo/bean/AuthVO;
.super Ljava/lang/Object;
.source "AuthVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private auth_code:Ljava/lang/String;

.field private expires_in:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuth_code()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/nemo/bean/AuthVO;->auth_code:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires_in()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/codemao/nemo/bean/AuthVO;->expires_in:I

    return v0
.end method

.method public setAuth_code(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/codemao/nemo/bean/AuthVO;->auth_code:Ljava/lang/String;

    return-void
.end method

.method public setExpires_in(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/codemao/nemo/bean/AuthVO;->expires_in:I

    return-void
.end method
