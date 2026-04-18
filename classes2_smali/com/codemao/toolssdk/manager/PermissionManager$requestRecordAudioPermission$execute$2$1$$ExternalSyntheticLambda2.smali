.class public final synthetic Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$2$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$2$1$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/util/List;Ljava/util/List;)V
    .registers 5

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$2$1$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$2$1;->$r8$lambda$HPZ5V1S-i6Ak6cb2CA7N3Vw7sAY(Landroid/content/Context;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method
