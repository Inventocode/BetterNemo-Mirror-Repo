.class final Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;
.super Ljava/lang/Object;
.source "CreativePermissionNoticeTool.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->checkPermissionWithRxpermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $permissions:[Ljava/lang/String;

.field final synthetic $type:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;->$context:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;->$permissions:[Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;->$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Integer;)Lio/reactivex/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_4f

    .line 139
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_36

    .line 140
    sget-object p1, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools;->INSTANCE:Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools;

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;->$context:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;->$permissions:[Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools;->rxPermissionList(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1;-><init>(Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_4f

    .line 151
    :cond_36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_46

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_4f

    :cond_46
    const/4 p1, 0x2

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_4f
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 22
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;->apply(Ljava/lang/Integer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
