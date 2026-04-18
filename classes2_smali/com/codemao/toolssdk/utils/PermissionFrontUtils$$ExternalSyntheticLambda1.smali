.class public final synthetic Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->$r8$lambda$O5wDY0MeU4VRmlCXlIfISwDUcFQ(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
