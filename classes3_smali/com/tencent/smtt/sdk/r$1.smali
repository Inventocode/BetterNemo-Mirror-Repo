.class Lcom/tencent/smtt/sdk/r$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tbs/video/interfaces/IUserStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/sdk/r;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tbs/video/interfaces/a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/r;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/r;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/smtt/sdk/r$1;->a:Lcom/tencent/smtt/sdk/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserStateChanged()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/r$1;->a:Lcom/tencent/smtt/sdk/r;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/r;->a:Lcom/tencent/smtt/sdk/t;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->c()V

    return-void
.end method
