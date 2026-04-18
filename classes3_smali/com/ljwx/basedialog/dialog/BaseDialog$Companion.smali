.class public final Lcom/ljwx/basedialog/dialog/BaseDialog$Companion;
.super Ljava/lang/Object;
.source "BaseDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/basedialog/dialog/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/ljwx/basedialog/dialog/BaseDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final setCommonLayout(I)V
    .registers 2

    .line 28
    invoke-static {p1}, Lcom/ljwx/basedialog/dialog/BaseDialog;->access$setCommonLayout$cp(I)V

    return-void
.end method
