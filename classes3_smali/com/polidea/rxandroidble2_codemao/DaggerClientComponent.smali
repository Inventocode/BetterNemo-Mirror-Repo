.class public final Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent;
.super Ljava/lang/Object;
.source "DaggerClientComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$Builder;,
        Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;,
        Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;,
        Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;,
        Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;,
        Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentBuilder;
    }
.end annotation


# direct methods
.method public static builder()Lcom/polidea/rxandroidble2_codemao/ClientComponent$Builder;
    .registers 2

    .line 147
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$Builder;-><init>(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$1;)V

    return-object v0
.end method
