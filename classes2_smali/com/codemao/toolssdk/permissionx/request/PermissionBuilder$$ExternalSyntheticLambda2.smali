.class public final synthetic Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;ZLcom/codemao/toolssdk/permissionx/request/ChainTask;Ljava/util/List;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;

    iput-boolean p2, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda2;->f$2:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    iput-object p4, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda2;->f$4:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda2;->f$1:Z

    iget-object v2, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda2;->f$2:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    iget-object v3, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda2;->f$4:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->$r8$lambda$zuUos4wAfZuIcDkagehqJKvXs00(Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;ZLcom/codemao/toolssdk/permissionx/request/ChainTask;Ljava/util/List;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Landroid/view/View;)V

    return-void
.end method
