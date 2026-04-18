.class public final Lcom/ljwx/baseapp/BasePopupLoading$Companion;
.super Ljava/lang/Object;
.source "BasePopupLoading.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/baseapp/BasePopupLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/ljwx/baseapp/BasePopupLoading$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final setLayout(I)V
    .registers 2

    .line 17
    invoke-static {p1}, Lcom/ljwx/baseapp/BasePopupLoading;->access$setLoadingLayout$cp(I)V

    return-void
.end method
