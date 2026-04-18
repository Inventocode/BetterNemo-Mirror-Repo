.class final Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1$1;
.super Ljava/lang/Object;
.source "CreativePermissionNoticeTool.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1;->onResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1$1;->this$0:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Integer;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_12

    .line 60
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object p1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1$1;->this$0:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1;->$permissionCallBack:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;

    invoke-interface {p1}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;->onAgree()V

    goto :goto_35

    :cond_12
    :goto_12
    const/4 v0, 0x3

    if-nez p1, :cond_16

    goto :goto_24

    .line 61
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_24

    iget-object p1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1$1;->this$0:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1;->$permissionCallBack:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;

    invoke-interface {p1}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;->onDenyRequestAndDontShow()V

    goto :goto_35

    :cond_24
    :goto_24
    const/4 v0, 0x2

    if-nez p1, :cond_28

    goto :goto_35

    .line 62
    :cond_28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_35

    iget-object p1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1$1;->this$0:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1;->$permissionCallBack:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;

    invoke-interface {p1}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;->onDenyRequest()V

    :cond_35
    :goto_35
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 22
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
