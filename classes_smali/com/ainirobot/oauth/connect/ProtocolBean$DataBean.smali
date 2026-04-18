.class public Lcom/ainirobot/oauth/connect/ProtocolBean$DataBean;
.super Ljava/lang/Object;
.source "ProtocolBean.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ainirobot/oauth/connect/ProtocolBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private auth_code:Ljava/lang/String;

.field private expires_in:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuth_code()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/ainirobot/oauth/connect/ProtocolBean$DataBean;->auth_code:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires_in()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/ainirobot/oauth/connect/ProtocolBean$DataBean;->expires_in:I

    return v0
.end method

.method public setAuth_code(Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/ainirobot/oauth/connect/ProtocolBean$DataBean;->auth_code:Ljava/lang/String;

    return-void
.end method

.method public setExpires_in(I)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/ainirobot/oauth/connect/ProtocolBean$DataBean;->expires_in:I

    return-void
.end method
