.class Lcom/gyf/immersionbar/NotchUtils$1;
.super Ljava/lang/Object;
.source "NotchUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gyf/immersionbar/NotchUtils;->getNotchHeight(Landroid/app/Activity;Lcom/gyf/immersionbar/NotchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/gyf/immersionbar/NotchCallback;


# direct methods
.method constructor <init>(Lcom/gyf/immersionbar/NotchCallback;Landroid/app/Activity;)V
    .registers 3

    .line 341
    iput-object p1, p0, Lcom/gyf/immersionbar/NotchUtils$1;->val$callback:Lcom/gyf/immersionbar/NotchCallback;

    iput-object p2, p0, Lcom/gyf/immersionbar/NotchUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/gyf/immersionbar/NotchUtils$1;->val$callback:Lcom/gyf/immersionbar/NotchCallback;

    if-eqz v0, :cond_d

    .line 345
    iget-object v1, p0, Lcom/gyf/immersionbar/NotchUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/gyf/immersionbar/NotchUtils;->getNotchHeight(Landroid/app/Activity;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/gyf/immersionbar/NotchCallback;->onNotchHeight(I)V

    :cond_d
    return-void
.end method
