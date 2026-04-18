.class public final synthetic Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda8;->f$0:Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda8;->f$0:Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;

    check-cast p1, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;

    invoke-static {v0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->$r8$lambda$nLc8qZD4Yas1dxW7lBmRAesb1HY(Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;)Z

    move-result p1

    return p1
.end method
