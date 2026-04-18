.class public Lcom/codemao/nemo/bean/GetUserLevelMessage;
.super Ljava/lang/Object;
.source "GetUserLevelMessage.java"


# instance fields
.field private signature_img_link:Ljava/lang/String;

.field private user_level:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSignature_img_link()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/codemao/nemo/bean/GetUserLevelMessage;->signature_img_link:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_level()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/codemao/nemo/bean/GetUserLevelMessage;->user_level:I

    return v0
.end method

.method public setSignature_img_link(Ljava/lang/String;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/codemao/nemo/bean/GetUserLevelMessage;->signature_img_link:Ljava/lang/String;

    return-void
.end method

.method public setUser_level(I)V
    .registers 2

    .line 20
    iput p1, p0, Lcom/codemao/nemo/bean/GetUserLevelMessage;->user_level:I

    return-void
.end method
