.class Lcn/codemao/android/account/util/UniqueId$Source$2;
.super Ljava/lang/Object;
.source "UniqueId.java"

# interfaces
.implements Lio/reactivex/ObservableSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/util/UniqueId$Source;->generate()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableSource<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/account/util/UniqueId$Source;


# direct methods
.method constructor <init>(Lcn/codemao/android/account/util/UniqueId$Source;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcn/codemao/android/account/util/UniqueId$Source$2;->this$0:Lcn/codemao/android/account/util/UniqueId$Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcn/codemao/android/account/util/UniqueId$Source$2;->this$0:Lcn/codemao/android/account/util/UniqueId$Source;

    invoke-static {v0}, Lcn/codemao/android/account/util/UniqueId$Source;->access$900(Lcn/codemao/android/account/util/UniqueId$Source;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 175
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method
