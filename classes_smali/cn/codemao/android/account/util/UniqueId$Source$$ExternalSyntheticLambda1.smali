.class public final synthetic Lcn/codemao/android/account/util/UniqueId$Source$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# instance fields
.field public final synthetic f$0:Lcn/codemao/android/account/util/UniqueId$Source;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/codemao/android/account/util/UniqueId$Source;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/account/util/UniqueId$Source$$ExternalSyntheticLambda1;->f$0:Lcn/codemao/android/account/util/UniqueId$Source;

    iput-object p2, p0, Lcn/codemao/android/account/util/UniqueId$Source$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .registers 4

    iget-object v0, p0, Lcn/codemao/android/account/util/UniqueId$Source$$ExternalSyntheticLambda1;->f$0:Lcn/codemao/android/account/util/UniqueId$Source;

    iget-object v1, p0, Lcn/codemao/android/account/util/UniqueId$Source$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->$r8$lambda$fSKW9psBGIMjQfZfx41cfBGdERU(Lcn/codemao/android/account/util/UniqueId$Source;Ljava/lang/String;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
