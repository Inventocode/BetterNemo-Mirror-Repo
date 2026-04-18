.class public final synthetic Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

.field public final synthetic f$1:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda23;->f$0:Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    iput-object p2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda23;->f$1:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    iput-object p3, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda23;->f$2:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda23;->f$3:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda23;->f$0:Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda23;->f$1:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    iget-object v2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda23;->f$2:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda23;->f$3:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->$r8$lambda$RVBYzSZ9NEpkA8HIBJX9tm6jAZQ(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
