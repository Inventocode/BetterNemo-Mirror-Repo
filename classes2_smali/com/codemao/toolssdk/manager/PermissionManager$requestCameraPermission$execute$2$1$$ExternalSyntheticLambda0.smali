.class public final synthetic Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2$1$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onForwardToSettings(Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2$1$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2$1;->$r8$lambda$evFOwWrutJl24bAMBSeYdKG6w44(Landroid/content/Context;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V

    return-void
.end method
