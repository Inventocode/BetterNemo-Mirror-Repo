.class Lcom/gyf/immersionbar/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field static final IMMERSION_NAVIGATION_BAR_VIEW_ID:I

.field static final IMMERSION_STATUS_BAR_VIEW_ID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    sget v0, Lcom/gyf/immersionbar/R$id;->immersion_status_bar_view:I

    sput v0, Lcom/gyf/immersionbar/Constants;->IMMERSION_STATUS_BAR_VIEW_ID:I

    .line 15
    sget v0, Lcom/gyf/immersionbar/R$id;->immersion_navigation_bar_view:I

    sput v0, Lcom/gyf/immersionbar/Constants;->IMMERSION_NAVIGATION_BAR_VIEW_ID:I

    return-void
.end method
