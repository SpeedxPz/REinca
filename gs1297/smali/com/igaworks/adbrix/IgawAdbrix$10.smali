.class final Lcom/igaworks/adbrix/IgawAdbrix$10;
.super Ljava/lang/Object;
.source "IgawAdbrix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/IgawAdbrix;->setGender(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gender:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 202
    iput p1, p0, Lcom/igaworks/adbrix/IgawAdbrix$10;->val$gender:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    iget v1, p0, Lcom/igaworks/adbrix/IgawAdbrix$10;->val$gender:I

    invoke-interface {v0, v1}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->setGender(I)V

    .line 207
    return-void
.end method