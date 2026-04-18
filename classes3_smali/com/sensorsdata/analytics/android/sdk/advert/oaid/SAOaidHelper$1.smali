.class final Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper$1;
.super Ljava/util/LinkedList;
.source "SAOaidHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "msaoaidsec"

    .line 58
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v0, "nllvm1632808251147706677"

    .line 59
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v0, "nllvm1630571663641560568"

    .line 60
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v0, "nllvm1623827671"

    .line 61
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method
