.class final Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PermissionNoticeTools.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2;->invoke(Ljava/lang/Integer;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2$1;

    invoke-direct {v0}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2$1;-><init>()V

    sput-object v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2$1;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x2

    :goto_e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 78
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2$1;->invoke(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
