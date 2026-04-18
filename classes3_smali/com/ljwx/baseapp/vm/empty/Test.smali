.class public Lcom/ljwx/baseapp/vm/empty/Test;
.super Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;
.source "Test.java"


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public createRepository()Ljava/lang/Object;
    .registers 2

    .line 17
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    const/4 v0, 0x0

    return-object v0
.end method
