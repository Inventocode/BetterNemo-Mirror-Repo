.class public final synthetic Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function4;

.field public final synthetic f$1:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function4;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda4;->f$1:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/util/List;Ljava/util/List;)V
    .registers 6

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function4;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda4;->f$1:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager;->$r8$lambda$0X212MnYd7kW5KAe5EJuHWHIK6Q(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method
