.class public final synthetic Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda2;->f$1:[Ljava/lang/String;

    iput p3, p0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .registers 5

    iget-object v0, p0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda2;->f$1:[Ljava/lang/String;

    iget v2, p0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->$r8$lambda$4_YetKwKen8JSB9W9kRsuvHdS7o(Landroid/app/Activity;[Ljava/lang/String;IZ)V

    return-void
.end method
