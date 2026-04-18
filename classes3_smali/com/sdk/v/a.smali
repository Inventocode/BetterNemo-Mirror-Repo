.class public Lcom/sdk/v/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/v/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "com.sdk.v.a"

.field public static g:Ljava/lang/Boolean;


# instance fields
.field public a:Lcom/sdk/base/api/CallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/base/api/CallBack<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Landroid/content/Context;

.field public c:Lcom/sdk/v/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/v/a<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field public d:Lcom/sdk/a/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/sdk/f/c;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/v/a;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sdk/base/api/CallBack;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/sdk/base/api/CallBack<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/sdk/v/a;->a(Landroid/content/Context;ILcom/sdk/base/api/CallBack;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 11

    iget-object v0, p0, Lcom/sdk/v/a;->b:Landroid/content/Context;

    const-string v1, "CUCC"

    invoke-static {v0, p1, v1}, Lcom/sdk/b/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {v0}, Lcom/sdk/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/sdk/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/16 v5, 0x64

    const-string v4, "成功"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sdk/v/a;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_24
    iget-object v0, p0, Lcom/sdk/v/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdk/q/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_36

    const/4 p1, 0x1

    const v0, 0x31129

    const-string v1, "操作频繁请,稍后再试"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sdk/v/a;->a(IILjava/lang/String;)V

    return-void

    :cond_36
    iget-object v0, p0, Lcom/sdk/v/a;->b:Landroid/content/Context;

    new-instance v1, Lcom/sdk/v/a$a;

    invoke-direct {v1, p0, p1}, Lcom/sdk/v/a$a;-><init>(Lcom/sdk/v/a;I)V

    new-instance v2, Lcom/sdk/x/a;

    invoke-direct {v2, v0, v1}, Lcom/sdk/x/a;-><init>(Landroid/content/Context;Lcom/sdk/e/a;)V

    new-instance v5, Lcom/sdk/base/framework/bean/DataInfo;

    invoke-direct {v5}, Lcom/sdk/base/framework/bean/DataInfo;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "serviceType"

    invoke-virtual {v5, v0, p1}, Lcom/sdk/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/sdk/base/framework/utils/app/AppUtils;->getLocalIPAddress()Ljava/lang/String;

    move-result-object p1

    const-string v0, "privateIp"

    invoke-virtual {v5, v0, p1}, Lcom/sdk/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "newVersion"

    const-string v0, "10"

    invoke-virtual {v5, p1, v0}, Lcom/sdk/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v2, Lcom/sdk/g/b;->g:Ljava/lang/String;

    new-instance v6, Lcom/sdk/g/a;

    invoke-direct {v6, v2}, Lcom/sdk/g/a;-><init>(Lcom/sdk/g/b;)V

    sget-object v8, Lcom/sdk/a/d$b;->c:Lcom/sdk/a/d$b;

    const/4 v7, 0x0

    const-string v4, "/dro/netm/v1.0/qc"

    invoke-virtual/range {v2 .. v8}, Lcom/sdk/g/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sdk/base/framework/bean/DataInfo;Lcom/sdk/e/b;ILcom/sdk/a/d$b;)Lcom/sdk/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/sdk/v/a;->d:Lcom/sdk/a/c;

    return-void
.end method

.method public final a(IILjava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/sdk/n/c;->a()Lcom/sdk/f/a;

    move-result-object v0

    iget-object v0, v0, Lcom/sdk/f/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdk/n/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/sdk/q/a;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_16
    iget-object v1, p0, Lcom/sdk/v/a;->c:Lcom/sdk/v/a$b;

    if-eqz v1, :cond_1f

    iget-object v2, v1, Lcom/sdk/v/a$b;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1f
    iget-object v1, p0, Lcom/sdk/v/a;->a:Lcom/sdk/base/api/CallBack;

    if-eqz v1, :cond_29

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/sdk/base/api/CallBack;->onFailed(IILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sdk/v/a;->a:Lcom/sdk/base/api/CallBack;

    :cond_29
    sget-object p1, Lcom/sdk/s/a;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p5}, Lcom/sdk/n/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p5, 0x14

    invoke-static {p5}, Lcom/sdk/q/a;->a(I)Ljava/lang/String;

    move-result-object p5

    :cond_10
    move-object v5, p5

    iget-object p5, p0, Lcom/sdk/v/a;->c:Lcom/sdk/v/a$b;

    if-eqz p5, :cond_1a

    iget-object v0, p5, Lcom/sdk/v/a$b;->a:Landroid/os/Handler;

    invoke-virtual {v0, p5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1a
    iget-object v0, p0, Lcom/sdk/v/a;->a:Lcom/sdk/base/api/CallBack;

    if-eqz v0, :cond_28

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/sdk/base/api/CallBack;->onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sdk/v/a;->a:Lcom/sdk/base/api/CallBack;

    :cond_28
    sget-object p1, Lcom/sdk/s/a;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Landroid/content/Context;ILcom/sdk/base/api/CallBack;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/sdk/base/api/CallBack<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p3, p0, Lcom/sdk/v/a;->a:Lcom/sdk/base/api/CallBack;

    iput-object p1, p0, Lcom/sdk/v/a;->b:Landroid/content/Context;

    if-gtz p2, :cond_8

    const/16 p2, 0x1e

    :cond_8
    new-instance p1, Lcom/sdk/v/a$b;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p2, p2

    invoke-direct {p1, p0, p2, p3}, Lcom/sdk/v/a$b;-><init>(Lcom/sdk/v/a;J)V

    iput-object p1, p0, Lcom/sdk/v/a;->c:Lcom/sdk/v/a$b;

    iget-object p2, p1, Lcom/sdk/v/a$b;->a:Landroid/os/Handler;

    iget-wide v0, p1, Lcom/sdk/v/a$b;->b:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/sdk/n/c;->b()V

    return-void
.end method
