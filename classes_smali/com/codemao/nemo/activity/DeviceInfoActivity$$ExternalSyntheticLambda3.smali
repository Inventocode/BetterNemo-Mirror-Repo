.class public final synthetic Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->$r8$lambda$WsUWfNNsLFGtdTDBZ5fd0y_SUyU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
