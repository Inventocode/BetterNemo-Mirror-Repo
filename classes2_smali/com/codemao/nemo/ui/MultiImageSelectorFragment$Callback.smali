.class public interface abstract Lcom/codemao/nemo/ui/MultiImageSelectorFragment$Callback;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/ui/MultiImageSelectorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCameraShot(Ljava/io/File;)V
.end method

.method public abstract onImageSelected(Ljava/lang/String;)V
.end method

.method public abstract onImageUnselected(Ljava/lang/String;)V
.end method

.method public abstract showCarmera()V
.end method
