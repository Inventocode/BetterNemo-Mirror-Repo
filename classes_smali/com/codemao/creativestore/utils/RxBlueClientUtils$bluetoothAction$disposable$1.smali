.class final Lcom/codemao/creativestore/utils/RxBlueClientUtils$bluetoothAction$disposable$1;
.super Ljava/lang/Object;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/utils/RxBlueClientUtils;->bluetoothAction(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "[B>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/creativestore/utils/RxBlueClientUtils$bluetoothAction$disposable$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$bluetoothAction$disposable$1;

    invoke-direct {v0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$bluetoothAction$disposable$1;-><init>()V

    sput-object v0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$bluetoothAction$disposable$1;->INSTANCE:Lcom/codemao/creativestore/utils/RxBlueClientUtils$bluetoothAction$disposable$1;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$bluetoothAction$disposable$1;->accept([B)V

    return-void
.end method

.method public final accept([B)V
    .registers 2

    return-void
.end method
