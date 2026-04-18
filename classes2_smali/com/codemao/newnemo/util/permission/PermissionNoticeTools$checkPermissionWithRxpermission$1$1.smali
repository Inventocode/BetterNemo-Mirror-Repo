.class public final Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$1$1;
.super Ljava/lang/Object;
.source "PermissionNoticeTools.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionWithRxpermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $emitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $type:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$a3M-ggEP5ExK6MA2C7_GwtVSJ4w(Lio/reactivex/ObservableEmitter;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$1$1;->run$lambda$0(Lio/reactivex/ObservableEmitter;Z)V

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/String;",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$1$1;->$context:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$1$1;->$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$1$1;->$emitter:Lio/reactivex/ObservableEmitter;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final run$lambda$0(Lio/reactivex/ObservableEmitter;Z)V
    .registers 3

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    goto :goto_a

    :cond_9
    const/4 p1, -0x1

    .line 65
    :goto_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 66
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 64
    sget-object v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    iget-object v1, p0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$1$1;->$context:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$1$1;->$type:Ljava/lang/String;

    iget-object v3, p0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$1$1;->$emitter:Lio/reactivex/ObservableEmitter;

    new-instance v4, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$1$1$$ExternalSyntheticLambda0;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {v0, v1, v2, v4}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->showNoticePop(Landroid/content/Context;Ljava/lang/String;Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;)V

    return-void
.end method
