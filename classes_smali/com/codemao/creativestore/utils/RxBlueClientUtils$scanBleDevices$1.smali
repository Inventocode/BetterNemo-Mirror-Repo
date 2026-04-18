.class final Lcom/codemao/creativestore/utils/RxBlueClientUtils$scanBleDevices$1;
.super Ljava/lang/Object;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanBleDevices([Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/utils/RxBlueClientUtils;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$scanBleDevices$1;->this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$scanBleDevices$1;->this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->disposeBlueScan()V

    return-void
.end method
