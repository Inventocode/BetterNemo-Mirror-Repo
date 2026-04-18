.class public final synthetic Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda28;->f$0:Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    iput-object p2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda28;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda28;->f$0:Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda28;->f$1:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->$r8$lambda$13KovYZ0ulLvvvFlCV23HtbT98E(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
