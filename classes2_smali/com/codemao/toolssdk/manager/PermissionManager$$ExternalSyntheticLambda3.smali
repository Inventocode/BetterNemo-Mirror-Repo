.class public final synthetic Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/util/List;Ljava/util/List;)V
    .registers 6

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager;->$r8$lambda$cGBqxTP6dg7Oyqu6r-01yVlF3xU(Lkotlin/jvm/functions/Function1;Landroid/content/Context;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method
