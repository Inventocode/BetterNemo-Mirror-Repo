.class public final synthetic Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function4;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda9;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda9;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda9;->f$2:Lkotlin/jvm/functions/Function4;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda9;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda9;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda9;->f$2:Lkotlin/jvm/functions/Function4;

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/manager/PermissionManager;->$r8$lambda$4H7w3kXV-kwDUZC3pVTWijg16QY(Landroid/content/Context;[Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method
