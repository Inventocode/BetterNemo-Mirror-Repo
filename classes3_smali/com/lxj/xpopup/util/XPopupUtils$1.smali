.class final Lcom/lxj/xpopup/util/XPopupUtils$1;
.super Ljava/lang/Object;
.source "XPopupUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/util/XPopupUtils;->moveUpToKeyboard(ILcom/lxj/xpopup/core/BasePopupView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pv:Lcom/lxj/xpopup/core/BasePopupView;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/BasePopupView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$pv"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/lxj/xpopup/util/XPopupUtils$1;->val$pv:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 278
    invoke-static {}, Lcom/lxj/xpopup/util/XPopupUtils;->access$000()I

    move-result v0

    iget-object v1, p0, Lcom/lxj/xpopup/util/XPopupUtils$1;->val$pv:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->access$100(ILcom/lxj/xpopup/core/BasePopupView;)V

    return-void
.end method
