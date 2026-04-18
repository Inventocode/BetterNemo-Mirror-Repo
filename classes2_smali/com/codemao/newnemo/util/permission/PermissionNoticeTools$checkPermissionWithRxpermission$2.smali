.class final Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PermissionNoticeTools.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionWithRxpermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $permissions:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-o2h-XdtMD8QofYiM6W9otMXtb8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2;->invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2;->$context:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2;->$permissions:[Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Integer;)Lio/reactivex/ObservableSource;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_41

    if-eqz p1, :cond_24

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/4 p1, 0x2

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_49

    .line 75
    :cond_1b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_49

    .line 78
    :cond_24
    sget-object p1, Lcom/codemao/nemo/util/permission/RxPermissionTools;->INSTANCE:Lcom/codemao/nemo/util/permission/RxPermissionTools;

    iget-object v0, p0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2;->$context:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2;->$permissions:[Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/permission/RxPermissionTools;->rxPermissions(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2$1;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2$1;

    new-instance v1, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_49

    .line 83
    :cond_41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_49
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 72
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2;->invoke(Ljava/lang/Integer;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
